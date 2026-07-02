.class public final Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;
.super Ljava/lang/Object;
.source "KRXContentUpdateManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;->INSTANCE:Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;->INSTANCE:Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;

    return-object v0
.end method

.method public static newKRXContentUpdateManager()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;
    .locals 1

    .line 16
    new-instance v0, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;
    .locals 1

    .line 12
    invoke-static {}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;->provideInstance()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/update/KRXContentUpdateManager_Factory;->get()Lcom/amazon/kindle/krx/update/KRXContentUpdateManager;

    move-result-object v0

    return-object v0
.end method
