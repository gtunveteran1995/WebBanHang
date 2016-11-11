namespace TechShop.Emtities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("tblTaiKhoan")]
    public partial class tblTaiKhoan
    {
        [Key]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int IDTaiKhoan { get; set; }

        [StringLength(30)]
        public string TenDangNhap { get; set; }

        [StringLength(30)]
        public string MatKhau { get; set; }

        public int? MucQuyen { get; set; }

        [StringLength(50)]
        public string Ho { get; set; }

        [StringLength(50)]
        public string Ten { get; set; }

        [StringLength(50)]
        public string DiaChi { get; set; }

        [StringLength(50)]
        public string SDT { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [Column(TypeName = "date")]
        public DateTime? NgaySinh { get; set; }

        [StringLength(500)]
        public string ThongTin { get; set; }

        [StringLength(20)]
        public string GioiTinh { get; set; }
    }
}
