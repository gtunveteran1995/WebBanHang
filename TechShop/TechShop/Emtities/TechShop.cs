namespace TechShop.Emtities
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class TechShop : DbContext
    {
        public TechShop()
            : base("name=TechShop")
        {
        }

        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tblChiTietKhuyenMai> tblChiTietKhuyenMais { get; set; }
        public virtual DbSet<tblChiTietPhieuNhap> tblChiTietPhieuNhaps { get; set; }
        public virtual DbSet<tblChiTietPhieuYeuCau> tblChiTietPhieuYeuCaus { get; set; }
        public virtual DbSet<tblGioHang> tblGioHangs { get; set; }
        public virtual DbSet<tblKhachHang> tblKhachHangs { get; set; }
        public virtual DbSet<tblKhuyenMai> tblKhuyenMais { get; set; }
        public virtual DbSet<tblLoaiSanPham> tblLoaiSanPhams { get; set; }
        public virtual DbSet<tblPhieuNhap> tblPhieuNhaps { get; set; }
        public virtual DbSet<tblPhieuYeucau> tblPhieuYeucaus { get; set; }
        public virtual DbSet<tblSanPham> tblSanPhams { get; set; }
        public virtual DbSet<tblTaiKhoan> tblTaiKhoans { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<tblKhachHang>()
                .HasMany(e => e.tblGioHangs)
                .WithRequired(e => e.tblKhachHang)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblKhuyenMai>()
                .HasMany(e => e.tblChiTietKhuyenMais)
                .WithRequired(e => e.tblKhuyenMai)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblLoaiSanPham>()
                .HasMany(e => e.tblSanPhams)
                .WithRequired(e => e.tblLoaiSanPham)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblPhieuNhap>()
                .HasMany(e => e.tblChiTietPhieuNhaps)
                .WithRequired(e => e.tblPhieuNhap)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<tblSanPham>()
                .Property(e => e.LinkAnh)
                .IsFixedLength();

            modelBuilder.Entity<tblTaiKhoan>()
                .Property(e => e.TenDangNhap)
                .IsFixedLength();

            modelBuilder.Entity<tblTaiKhoan>()
                .Property(e => e.MatKhau)
                .IsFixedLength();
        }
    }
}
