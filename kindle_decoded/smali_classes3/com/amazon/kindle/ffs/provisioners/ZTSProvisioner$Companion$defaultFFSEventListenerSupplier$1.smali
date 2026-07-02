.class final Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ZTSProvisioner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/krx/logging/ILogger;",
        "Lcom/amazon/kindle/ffs/logging/FFSEventListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/krx/logging/ILogger;)Lcom/amazon/kindle/ffs/logging/FFSEventListener;
    .locals 3

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Lcom/amazon/kindle/ffs/logging/FFSEventListener;

    new-instance v1, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;

    invoke-static {}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisionerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/amazon/kindle/ffs/logging/FFSLogReceiverImpl;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/logging/ILogger;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/ffs/logging/FFSEventListener;-><init>(Lcom/amazon/kindle/ffs/logging/IFFSLogReceiver;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/krx/logging/ILogger;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/provisioners/ZTSProvisioner$Companion$defaultFFSEventListenerSupplier$1;->invoke(Lcom/amazon/kindle/krx/logging/ILogger;)Lcom/amazon/kindle/ffs/logging/FFSEventListener;

    move-result-object p1

    return-object p1
.end method
