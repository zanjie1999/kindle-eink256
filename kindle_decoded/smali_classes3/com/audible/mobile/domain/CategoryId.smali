.class public interface abstract Lcom/audible/mobile/domain/CategoryId;
.super Ljava/lang/Object;
.source "CategoryId.java"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/CategoryId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/CategoryId;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableCategoryIdImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/CategoryId;->NONE:Lcom/audible/mobile/domain/CategoryId;

    return-void
.end method
