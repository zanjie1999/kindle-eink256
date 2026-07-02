.class public final Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;
.super Ljava/lang/Object;
.source "ThirdPartyCoreModule_GetRestrictionHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;

    invoke-direct {v0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->INSTANCE:Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->proxyGetRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static proxyGetRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 30
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule;->getRestrictionHandler()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;
    .locals 1

    .line 16
    invoke-static {}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->provideInstance()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/amazon/kcp/application/ThirdPartyCoreModule_GetRestrictionHandlerFactory;->get()Lcom/amazon/kindle/krx/restriction/IRestrictionHandler;

    move-result-object v0

    return-object v0
.end method
