.class final Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;
.super Ljava/lang/Object;
.source "PageChangeDelegate.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/PageChangeDelegate;->updateChapterName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $chapterName:Ljava/lang/String;

.field final synthetic $sourceActivity:Lcom/amazon/kindle/recaps/activity/RecapsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;->$sourceActivity:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;->$chapterName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;->$sourceActivity:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/recaps/PageChangeDelegate$updateChapterName$1;->$chapterName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->updateChromeTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
