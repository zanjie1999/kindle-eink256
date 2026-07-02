.class public interface abstract Lcom/audible/mobile/domain/CreativeId;
.super Ljava/lang/Object;
.source "CreativeId.kt"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/domain/CreativeId$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/CreativeId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/domain/CreativeId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/CreativeId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    new-instance v0, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/CreativeId;->NONE:Lcom/audible/mobile/domain/ImmutableCreativeIdImpl;

    return-void
.end method
