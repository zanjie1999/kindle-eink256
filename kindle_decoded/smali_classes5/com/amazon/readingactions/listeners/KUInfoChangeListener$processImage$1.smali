.class final Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;
.super Ljava/lang/Object;
.source "KUInfoChangeListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->processImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $coverIndex:I

.field final synthetic this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;->this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    iput p2, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;->$coverIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;->this$0:Lcom/amazon/readingactions/listeners/KUInfoChangeListener;

    invoke-static {v0}, Lcom/amazon/readingactions/listeners/KUInfoChangeListener;->access$getHandler$p(Lcom/amazon/readingactions/listeners/KUInfoChangeListener;)Lcom/amazon/readingactions/helpers/KUImageHandler;

    move-result-object v0

    iget v1, p0, Lcom/amazon/readingactions/listeners/KUInfoChangeListener$processImage$1;->$coverIndex:I

    invoke-interface {v0, v1}, Lcom/amazon/readingactions/helpers/KUImageHandler;->updateAndReloadBookImage(I)V

    return-void
.end method
