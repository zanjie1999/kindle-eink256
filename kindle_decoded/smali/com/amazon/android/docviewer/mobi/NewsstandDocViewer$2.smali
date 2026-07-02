.class Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$2;
.super Ljava/lang/Object;
.source "NewsstandDocViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->saveLocalBookState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 0

    .line 558
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$2;->val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$2;->val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 564
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->access$000()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "MobiDocViewer: Unable to persist book state"

    invoke-static {v1, v2, v3, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
