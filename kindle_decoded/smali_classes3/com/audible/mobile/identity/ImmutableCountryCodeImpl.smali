.class public final Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;
.super Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;
.source "ImmutableCountryCodeImpl.java"

# interfaces
.implements Lcom/audible/mobile/identity/CountryCode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl<",
        "Lcom/audible/mobile/identity/CountryCode;",
        ">;",
        "Lcom/audible/mobile/identity/CountryCode;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/identity/CountryCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/BaseParcelableIdentifierImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method
