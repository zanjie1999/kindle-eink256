.class public final Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;
.super Lcom/amazon/kindle/ffs/utils/SingletonHolder;
.source "UGSProvisioner.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/ffs/utils/SingletonHolder<",
        "Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    sget-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;->INSTANCE:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/ffs/utils/SingletonHolder;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;-><init>()V

    return-void
.end method
