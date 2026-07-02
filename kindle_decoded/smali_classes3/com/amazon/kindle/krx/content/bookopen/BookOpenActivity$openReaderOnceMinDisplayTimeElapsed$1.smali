.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$openReaderOnceMinDisplayTimeElapsed$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->openReaderOnceMinDisplayTimeElapsed$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$openReaderOnceMinDisplayTimeElapsed$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$openReaderOnceMinDisplayTimeElapsed$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getCurrentDriver$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->completeAction$krxsdk_release()V

    :cond_0
    return-void
.end method
