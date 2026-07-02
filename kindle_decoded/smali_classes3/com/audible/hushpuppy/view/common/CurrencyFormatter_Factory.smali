.class public final Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;
.super Ljava/lang/Object;
.source "CurrencyFormatter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/hushpuppy/view/common/CurrencyFormatter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;-><init>()V

    sput-object v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;->INSTANCE:Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;->INSTANCE:Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/audible/hushpuppy/view/common/CurrencyFormatter;
    .locals 1

    .line 15
    new-instance v0, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    invoke-direct {v0}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/hushpuppy/view/common/CurrencyFormatter;
    .locals 1

    .line 11
    invoke-static {}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;->provideInstance()Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/audible/hushpuppy/view/common/CurrencyFormatter_Factory;->get()Lcom/audible/hushpuppy/view/common/CurrencyFormatter;

    move-result-object v0

    return-object v0
.end method
