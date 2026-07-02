.class final Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$2;
.super Ljava/lang/Object;
.source "BookImageProviderHelper.java"

# interfaces
.implements Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeBitmapToFileDescriptor(Landroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPayload()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->access$100(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
