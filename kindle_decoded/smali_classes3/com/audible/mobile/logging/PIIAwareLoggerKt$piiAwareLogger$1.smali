.class final Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PIIAwareLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/logging/PIIAwareLoggerKt;->piiAwareLogger(Ljava/lang/Object;)Lkotlin/Lazy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_piiAwareLogger:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;->$this_piiAwareLogger:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;
    .locals 2

    .line 10
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    iget-object v1, p0, Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;->$this_piiAwareLogger:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/audible/mobile/logging/PIIAwareLoggerKt$piiAwareLogger$1;->invoke()Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    move-result-object v0

    return-object v0
.end method
