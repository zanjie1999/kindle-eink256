.class public interface abstract Lcom/amazon/kindle/webservices/IWebRequestExecutor;
.super Ljava/lang/Object;
.source "IWebRequestExecutor.java"


# static fields
.field public static final RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "Hint-Sidecar-Download"

    const-string v1, "Hint-Apnx-Url"

    const-string v2, "Hint-Phl-Available"

    const-string v3, "Content-Length"

    const-string v4, "Content-Range"

    const-string v5, "Content-Type"

    const-string v6, "ResumableDownloadToken"

    const-string/jumbo v7, "x-adp-error-description"

    const-string v8, "X-ADP-Displayable-Error"

    const-string v9, "X-ADP-Host"

    const-string v10, "X-Amzn-Type-Version"

    const-string/jumbo v11, "x-amzn-RequestId"

    const-string/jumbo v12, "x-amz-id-2"

    const-string v13, "Date"

    const-string v14, "Server"

    .line 69
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/IWebRequestExecutor;->RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
.end method
