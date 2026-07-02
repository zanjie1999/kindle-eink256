.class Lcom/amazon/kcp/application/associate/PreloadInformationResult;
.super Ljava/lang/Object;
.source "PreloadInformationResult.java"


# instance fields
.field public properties:Ljava/util/Properties;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->properties:Ljava/util/Properties;

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    return-void
.end method
