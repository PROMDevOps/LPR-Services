using Prom.LPR.Api.Models;

namespace Prom.LPR.Api.Database.Repositories
{
    public interface IOrganizationRepository
    {
        public void SetCustomOrgId(string customOrgId);
        public Task<MOrganization> GetOrganization();
        public MOrganizationUser AddUserToOrganization(MOrganizationUser user);
        public bool IsUserNameExist(string userName);
        public MOrganizationUser GetUserInOrganization(string userName);
    }
}
