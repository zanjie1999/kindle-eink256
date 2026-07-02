.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$9;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->navigateToPrevNavigationStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$9;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$9;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$1900(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$2000(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;I)Z

    return-void
.end method
