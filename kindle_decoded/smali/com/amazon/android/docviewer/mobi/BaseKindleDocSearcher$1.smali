.class Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$1;
.super Ljava/lang/Object;
.source "BaseKindleDocSearcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$1;->this$0:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$1;->this$0:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->stop()V

    return-void
.end method
