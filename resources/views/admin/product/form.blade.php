<div class="form-group">
    <label for="kode_barang">Kode Produk</label>
    <input type="text" name="kode_barang" id="name" class="form-control" value="{{ $product->kode_barang ?? '' }}">

    @error('kode_barang')
    <small class="text-danger">{{ $message }}</small>
    @enderror
</div>

<div class="form-group">
    <label for="nama_barang">Nama</label>
    <input type="text" name="nama_barang" id="name" class="form-control" value="{{ $product->nama_barang ?? '' }}">

    @error('nama_barang')
    <small class="text-danger">{{ $message }}</small>
    @enderror
</div>
<div class="form-group">
    <label for="description">Description</label>
    <textarea name="description" id="description" class="form-control">{{ $product->description ?? '' }}</textarea>
    @error('description')
    <small class="text-danger">{{ $message }}</small>
    @enderror
</div>

<div class="form-group">
    <label for="harga">Harga</label>
    <input type="text" name="harga" id="name" class="form-control" value="{{ old('harga') ?? 0 }}">

    @error('harga')
    <small class="text-danger">{{ $message }}</small>
    @enderror
</div>

<div class="m-t-20 text-center">
    <button type="submit" class="btn btn-primary submit-btn"><i class="fa fa-save"></i> Save</button>
</div>