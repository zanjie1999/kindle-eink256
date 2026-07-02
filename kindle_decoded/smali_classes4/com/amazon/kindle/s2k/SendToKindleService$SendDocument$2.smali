.class Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$2;
.super Ljava/lang/Object;
.source "SendToKindleService.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$2;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$2;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->onUploadFileProgress()V

    return-void
.end method
