.class Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;
.super Landroid/util/LruCache;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/metrics/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SessionLruCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/amazon/xray/metrics/SessionManager$Session;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 358
    invoke-direct {p0, p1}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 349
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/amazon/xray/metrics/SessionManager$Session;

    check-cast p4, Lcom/amazon/xray/metrics/SessionManager$Session;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/xray/metrics/SessionManager$SessionLruCache;->entryRemoved(ZLjava/lang/String;Lcom/amazon/xray/metrics/SessionManager$Session;Lcom/amazon/xray/metrics/SessionManager$Session;)V

    return-void
.end method

.method protected entryRemoved(ZLjava/lang/String;Lcom/amazon/xray/metrics/SessionManager$Session;Lcom/amazon/xray/metrics/SessionManager$Session;)V
    .locals 0

    .line 365
    invoke-virtual {p3}, Lcom/amazon/xray/metrics/SessionManager$Session;->close()V

    .line 366
    invoke-static {p3}, Lcom/amazon/xray/metrics/SessionManager$Session;->access$400(Lcom/amazon/xray/metrics/SessionManager$Session;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/xray/metrics/SessionManager;->access$500(Ljava/lang/String;)V

    return-void
.end method
