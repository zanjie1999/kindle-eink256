.class final synthetic Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "BookOpenActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->displaySplashScreen$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 7

    const-class v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    const/4 v1, 0x1

    const-string v4, "onProgressUpdate"

    const-string v5, "onProgressUpdate$krxsdk_release(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$displaySplashScreen$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    .line 385
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->onProgressUpdate$krxsdk_release(I)V

    return-void
.end method
