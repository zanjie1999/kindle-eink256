.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3$1;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->onMobiActiveAreaSelection(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3$1;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 895
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3$1;->this$1:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$3;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1600(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1502(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Ljava/util/List;)Ljava/util/List;

    return-void
.end method
