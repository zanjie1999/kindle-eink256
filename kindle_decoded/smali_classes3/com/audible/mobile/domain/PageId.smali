.class public interface abstract Lcom/audible/mobile/domain/PageId;
.super Ljava/lang/Object;
.source "PageId.kt"

# interfaces
.implements Lcom/audible/mobile/domain/Identifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/domain/PageId$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/domain/Identifier<",
        "Lcom/audible/mobile/domain/PageId;",
        ">;"
    }
.end annotation


# static fields
.field public static final NONE:Lcom/audible/mobile/domain/ImmutablePageIdImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/mobile/domain/PageId$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/mobile/domain/PageId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    new-instance v0, Lcom/audible/mobile/domain/ImmutablePageIdImpl;

    invoke-direct {v0}, Lcom/audible/mobile/domain/ImmutablePageIdImpl;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/PageId;->NONE:Lcom/audible/mobile/domain/ImmutablePageIdImpl;

    return-void
.end method
