.class public interface abstract Lcom/audible/mobile/domain/OrderNumber;
.super Ljava/lang/Object;
.source "OrderNumber.kt"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/domain/OrderNumber$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/OrderNumber;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/domain/OrderNumber$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/OrderNumber$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    new-instance v0, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/OrderNumber;->NONE:Lcom/audible/mobile/domain/ImmutableOrderNumberImpl;

    return-void
.end method
