.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->turnPanelOff()V
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

    .line 1039
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1042
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    invoke-static {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$200(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;)Lcom/amazon/kindle/krf/KRF/Reader/Position;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$300(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;)Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$400(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/ITogglablePageElement;)Z

    .line 1043
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$5;->this$0:Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$500(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/krf/KRF/Reader/Position;I)V

    return-void
.end method
