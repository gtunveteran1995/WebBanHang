namespace TechShop.Emtities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblChiTietPhieuYeuCau")]
    public partial class tblChiTietPhieuYeuCau
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDPhieuYeuCau { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDChiTietPhieuYeuCau { get; set; }

        public int? IDSanPham { get; set; }

        public int? SoLuong { get; set; }

        public int? DonGia { get; set; }

        public int? ThanhTien { get; set; }
    }
}
