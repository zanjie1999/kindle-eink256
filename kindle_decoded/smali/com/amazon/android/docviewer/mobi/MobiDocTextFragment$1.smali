.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$1;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->saveState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;Lcom/amazon/kindle/model/content/LocalBookState;)V
    .locals 0

    .line 244
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$1;->val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$1;->val$bookState:Lcom/amazon/kindle/model/content/LocalBookState;

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->persist()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 250
    invoke-static {}, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MobiDocViewer: Unable to persist book state"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
