using FreeCodeCamp.Data;
using FreeCodeCamp.Models;
using Microsoft.AspNetCore.Mvc;

namespace FreeCodeCamp.Controllers
{
    public class UserLoginController : Controller
    {
        private readonly ApplicationDbContext? _db;

        public UserLoginController(ApplicationDbContext db)
        {
            _db = db;
        }

        public IActionResult Index()
        {
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
        public IActionResult Index(Login obj)
        {
            if (ModelState.IsValid)
            {
                _db.GemUserDetails.Add(obj);
                _db.SaveChanges();
                TempData["success"] = "Check email for verification";
                return RedirectToAction("Index");
            }
            return View(obj);
        }
    }
}