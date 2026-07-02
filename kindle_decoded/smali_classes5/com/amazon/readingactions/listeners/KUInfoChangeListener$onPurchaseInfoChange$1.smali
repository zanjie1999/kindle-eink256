.class final Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;
.super Ljava/lang/Object;
.source "KUInfoChangeListener.kt"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;->this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iput-object p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;->$asin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;->this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iget-object v1, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$onPurchaseInfoChange$1;->$asin:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->processImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method
