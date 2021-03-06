﻿using System;
namespace XERP.Domain.MenuSecurityDomain.Services
{
    public interface IMenuSecurityServiceAgent
    {
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.ExecutableProgram> GetExecutableProgramsReadOnly(string companyID);
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.Company> GetGlobalCompanies();
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.MenuItem> GetMenuItemByAutoID(long autoID);
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.MenuItem> GetMenuItemByID(string menuItemID, string companyID);
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.MenuItem> GetMenuItemChildren(string menuItemID, string companyID);
        System.Windows.Media.Imaging.BitmapImage GetMenuItemImage(string imageID, string companyID);
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.MenuItem> GetMenuItemsAvailableToUser(string systemUserID, string companyID);
        System.Collections.Generic.IEnumerable<XERP.Domain.MenuSecurityDomain.MenuSecurityDataService.Temp> GetMetaData(string tableName);
    }
}
