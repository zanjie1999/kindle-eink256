.class Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;
.super Ljava/lang/Object;
.source "TransferStatusUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->throwError(ILjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$id:I

.field final synthetic val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;ILjava/lang/Exception;)V
    .locals 0

    .line 284
    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    iput p3, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$id:I

    iput-object p4, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$l:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;

    iget v1, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$id:I

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater$3;->val$e:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferListener;->onError(ILjava/lang/Exception;)V

    return-void
.end method
