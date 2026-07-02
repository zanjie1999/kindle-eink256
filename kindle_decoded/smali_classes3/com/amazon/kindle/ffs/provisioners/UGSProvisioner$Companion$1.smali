.class final synthetic Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "UGSProvisioner.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;->INSTANCE:Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/FunctionReference;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "<init>()V"

    return-object v0
.end method

.method public final invoke()Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    .line 45
    invoke-direct {v0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;-><init>()V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner$Companion$1;->invoke()Lcom/amazon/kindle/ffs/provisioners/UGSProvisioner;

    move-result-object v0

    return-object v0
.end method
