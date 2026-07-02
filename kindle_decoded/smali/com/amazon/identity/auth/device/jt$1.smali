.class Lcom/amazon/identity/auth/device/jt$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/ju;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/jt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rE:Lcom/amazon/identity/auth/device/jt;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/jt;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jt$1;->rE:Lcom/amazon/identity/auth/device/jt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/mb;[B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jt$1;->rE:Lcom/amazon/identity/auth/device/jt;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/kj;->a(Lcom/amazon/identity/auth/device/mb;)V

    if-eqz p2, :cond_0

    .line 126
    iget-object p1, p0, Lcom/amazon/identity/auth/device/jt$1;->rE:Lcom/amazon/identity/auth/device/jt;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    array-length v0, p2

    invoke-interface {p1, p2, v0}, Lcom/amazon/identity/auth/device/kj;->a([BI)V

    .line 129
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/jt;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Request complete"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/amazon/identity/auth/device/jt$1;->rE:Lcom/amazon/identity/auth/device/jt;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/jt;->rC:Lcom/amazon/identity/auth/device/kj;

    invoke-interface {p1}, Lcom/amazon/identity/auth/device/kj;->cD()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
