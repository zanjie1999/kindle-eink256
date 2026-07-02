.class public interface abstract Lcom/audible/mobile/domain/Asin;
.super Ljava/lang/Object;
.source "Asin.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/Asin;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/Asin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    return-void
.end method
