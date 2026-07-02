.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$performSplashScreenAction$1;
.super Ljava/lang/Object;
.source "BookOpenDriver.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->performSplashScreenAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$performSplashScreenAction$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver$performSplashScreenAction$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;->access$getOpenActivity$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenDriver;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->displaySplashScreen$krxsdk_release()V

    return-void
.end method
