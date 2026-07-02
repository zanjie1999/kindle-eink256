.class final Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$1;
.super Ljava/lang/Object;
.source "BookImageProviderHelper.java"

# interfaces
.implements Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$PayloadGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->writeExceptionToFileDescriptor(Ljava/lang/Throwable;Landroid/os/ParcelFileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exception:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$1;->val$exception:Ljava/lang/Throwable;

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

    .line 77
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper$1;->val$exception:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHelper;->access$000(Ljava/lang/Throwable;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
