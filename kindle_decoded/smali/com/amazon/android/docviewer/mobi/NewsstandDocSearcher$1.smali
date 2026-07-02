.class Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher$1;
.super Ljava/lang/Object;
.source "NewsstandDocSearcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher$1;->this$0:Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->stop()V

    return-void
.end method
