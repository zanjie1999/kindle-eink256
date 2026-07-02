.class Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$4;
.super Ljava/lang/Object;
.source "MobiAnnotationAreaManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->onAnnotationsReadEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
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

    .line 232
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$4;->this$0:Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->access$000(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V

    return-void
.end method
