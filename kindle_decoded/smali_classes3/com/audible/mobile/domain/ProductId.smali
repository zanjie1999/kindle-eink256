.class public interface abstract Lcom/audible/mobile/domain/ProductId;
.super Ljava/lang/Object;
.source "ProductId.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/ProductId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/ProductId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/ImmutableProductIdImpl;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ProductId;->NONE:Lcom/audible/mobile/domain/ProductId;

    return-void
.end method
