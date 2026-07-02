.class public Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;
.super Ljava/lang/Thread;
.source "BaseKindleDocSearcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SearchThread"
.end annotation


# instance fields
.field private m_item:Lcom/amazon/kindle/search/KindleSearchItem;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/search/KindleSearchItem;)V
    .locals 1

    const-string v0, "Book Search Thread"

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;->m_item:Lcom/amazon/kindle/search/KindleSearchItem;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;->m_item:Lcom/amazon/kindle/search/KindleSearchItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/search/KindleSearchItem;->cancel()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;->m_item:Lcom/amazon/kindle/search/KindleSearchItem;

    invoke-virtual {v0}, Lcom/amazon/kindle/search/KindleSearchItem;->search()V

    return-void
.end method
