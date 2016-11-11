namespace TechShop.Emtities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblSanPham")]
    public partial class tblSanPham
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDLoaiSanPham { get; set; }

        [Key]
        [Column(Order = 1)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDSanPham { get; set; }

        [StringLength(50)]
        public string TenSanPham { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgayNhap { get; set; }

        public int? GiaNhap { get; set; }

        public int? GiaBan { get; set; }

        public int? SoLuong { get; set; }

        [StringLength(50)]
        public string LinkAnh { get; set; }

        public string MoTa { get; set; }

        public int? LuotXem { get; set; }

        [StringLength(50)]
        public string Mau { get; set; }

        public virtual tblLoaiSanPham tblLoaiSanPham { get; set; }
    }
}
