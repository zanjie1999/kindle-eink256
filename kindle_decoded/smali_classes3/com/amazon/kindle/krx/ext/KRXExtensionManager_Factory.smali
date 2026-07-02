.class public final Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;
.super Ljava/lang/Object;
.source "KRXExtensionManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/ext/KRXExtensionManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;->INSTANCE:Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;->INSTANCE:Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;

    return-object v0
.end method

.method public static newKRXExtensionManager()Lcom/amazon/kindle/krx/ext/KRXExtensionManager;
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/ext/KRXExtensionManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/krx/ext/KRXExtensionManager;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/kindle/krx/ext/KRXExtensionManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/ext/KRXExtensionManager;
    .locals 1

    .line 11
    invoke-static {}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;->provideInstance()Lcom/amazon/kindle/krx/ext/KRXExtensionManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/ext/KRXExtensionManager_Factory;->get()Lcom/amazon/kindle/krx/ext/KRXExtensionManager;

    move-result-object v0

    return-object v0
.end method
