namespace TechShop.Emtities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblGioHang")]
    public partial class tblGioHang
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDGioHang { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDKhachHang { get; set; }

        public int? IDSanPham { get; set; }

        public int? SoLuong { get; set; }

        public int? TrangThai { get; set; }

        public virtual tblKhachHang tblKhachHang { get; set; }
    }
}
