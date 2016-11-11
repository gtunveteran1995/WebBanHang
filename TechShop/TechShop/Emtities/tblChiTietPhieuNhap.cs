namespace TechShop.Emtities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblChiTietPhieuNhap")]
    public partial class tblChiTietPhieuNhap
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDPhieuNhap { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDChiTietPhieuNhap { get; set; }

        public int? IDLoaiSanPham { get; set; }

        public int? IDSanPham { get; set; }

        public int? SoLuong { get; set; }

        public int? GiaNhap { get; set; }

        public int? ThanhTien { get; set; }

        public virtual tblPhieuNhap tblPhieuNhap { get; set; }
    }
}
