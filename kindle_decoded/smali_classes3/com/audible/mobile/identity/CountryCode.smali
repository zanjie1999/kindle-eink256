.class public interface abstract Lcom/audible/mobile/identity/CountryCode;
.super Ljava/lang/Object;
.source "CountryCode.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/identity/CountryCode;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;

    invoke-direct {v0}, Lcom/audible/mobile/identity/ImmutableCountryCodeImpl;-><init>()V

    return-void
.end method
