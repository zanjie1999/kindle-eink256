.class Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;
.super Ljava/lang/Object;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BookMetadata"
.end annotation


# instance fields
.field public final authors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    iput-object p1, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;->title:Ljava/lang/String;

    .line 224
    iput-object p2, p0, Lcom/amazon/kcp/store/BrowserHost$StoreBookPayload$BookMetadata;->authors:Ljava/util/List;

    return-void
.end method
