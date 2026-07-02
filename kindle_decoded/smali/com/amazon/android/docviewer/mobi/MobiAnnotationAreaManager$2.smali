.class Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$2;
.super Lcom/amazon/android/docviewer/mobi/BaseKRFListener;
.source "MobiAnnotationAreaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/BaseKRFListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageChanged()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$2;->this$0:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->access$000(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    return-void
.end method
