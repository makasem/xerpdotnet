﻿
// Toolkit namespace

//XERP namespaces
using XERP.Client.WPF.MainMenu.ViewModels;
using XERP.Domain.MenuSecurityDomain.Services;

namespace XERP.Client.WPF.MainMenu
{         
    public class ViewModelLocator
    {
        // Create MainPageViewModel on demand
        public MainPageViewModel MainPageViewModel
        {
            get { return new MainPageViewModel(); }
        }

        public MainMenuViewModel MainMenuViewModel
        {
            get
            {
                IMenuSecurityServiceAgent serviceAgent = new MenuSecurityServiceAgent();
                return new MainMenuViewModel(serviceAgent);
            }
        }


    }
}