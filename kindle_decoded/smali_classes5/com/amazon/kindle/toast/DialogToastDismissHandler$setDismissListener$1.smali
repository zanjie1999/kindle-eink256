.class public final Lcom/amazon/kindle/toast/DialogToastDismissHandler$setDismissListener$1;
.super Ljava/lang/Object;
.source "KindleToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/ToastDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/toast/DialogToastDismissHandler;->setDismissListener(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $listener:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$setDismissListener$1;->$listener:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/toast/DialogToastDismissHandler$setDismissListener$1;->$listener:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
