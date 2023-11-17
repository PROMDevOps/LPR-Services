using System.Diagnostics.CodeAnalysis;
using Prom.LPR.Api.Models;

namespace Prom.LPR.Api.ModelsViews
{
    [ExcludeFromCodeCoverage]
    public class MVOrganization
    {
        public string? Status { get; set; }
        public string? Description { get; set; }
        public MOrganization? Organization { get; set; }
    }
}
