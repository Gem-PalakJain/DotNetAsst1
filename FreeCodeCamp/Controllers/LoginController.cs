using FreeCodeCamp.Data;
using FreeCodeCamp.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.Web.CodeGenerators.Mvc.Controller;
using System.Diagnostics;

namespace FreeCodeCamp.Controllers
{
    public class LoginController : Controller
    {
        private readonly ApplicationDbContext _db;

        public LoginController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
        //    //var objLoginList = _db.Logins.ToList();
            IEnumerable<Login> objUsersList = _db.GemUserDetails;
              return View(objUsersList);
        }

        //GET
        public IActionResult Create()
        {
            return View();
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]  //for cross site request forgery
        public IActionResult Create(Login obj)
        {
            //if (obj.Name == obj.DisplayOrder.ToString())
            //{
            //    ModelState.AddModelError("Name", "The display order cannot be same as Name");
            //}
            if (ModelState.IsValid)
            {
                _db.GemUserDetails.Add(obj);
                _db.SaveChanges();
                TempData["success"] = "Login created successfully";

                PasswordModel pobj = new PasswordModel();
                pobj.ID = obj.ID;
                pobj.Password = "123";
                _db.GemPasswordDetails.Add(pobj);
                _db.SaveChanges();

                //mail sent to provided email
                var ctrl = new EmailForPwController(_db);
                ctrl.sendEmailForPw(obj.Email);

                return RedirectToAction("Index", "EmailForPw");
            }
            return View(obj);
        }



        //GET
        public IActionResult Edit(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var loginDetailsFromDb = _db.GemUserDetails.Find(id);

            if (loginDetailsFromDb == null)
            {
                return NotFound();
            }

            return View(loginDetailsFromDb);
        }

        //POST
        [HttpPost]
        [ValidateAntiForgeryToken]  //for cross site request forgery
        public IActionResult Edit(Login obj)
        {
            //if (obj.Name == obj.DisplayOrder.ToString())
            //{
            //    ModelState.AddModelError("Name", "The display order cannot be same as Name");
            //}
            if (ModelState.IsValid)
            {
                _db.GemUserDetails.Update(obj);
                _db.SaveChanges();
                TempData["success"] = "Login updated successfully";
                return RedirectToAction("Index");
            }
            return View(obj);
        }

        //GET
        public IActionResult Delete(int? id)
        {
            if (id == null || id == 0)
            {
                return NotFound();
            }
            var loginDetailsFromDb = _db.GemUserDetails.Find(id);

            if (loginDetailsFromDb == null)
            {
                return NotFound();
            }
            return View(loginDetailsFromDb);
        }

        //POST
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]  //for cross site request forgery
        public IActionResult DeletePOST(int? id)
        {
            var obj = _db.GemUserDetails.Find(id);
            if (obj == null)
            {
                return NotFound();
            }
            _db.GemUserDetails.Remove(obj);
            _db.SaveChanges();
            TempData["success"] = "Login deleted successfully";
            return RedirectToAction("Index");
        }

        //POST
        [HttpPost, ActionName("Index")]
        [ValidateAntiForgeryToken]
        public IActionResult checkCred(string em, string pw)
        {
            foreach (var item in _db.GemUserDetails)
            {
                if (item.Email == em)
                {
                    int tID = item.ID;
                    var email = _db.GemUserDetails.Find(tID);
                    var password = _db.GemPasswordDetails.Find(tID);

                    if (email == null && password == null)
                    {
                        return NotFound();
                    }

                    if (em == email?.Email && pw == password?.Password)
                    {
                        return RedirectToAction("Index");
                    }
                }
            }
            return RedirectToAction("Index", "UserLogin");
        }
    }
}
