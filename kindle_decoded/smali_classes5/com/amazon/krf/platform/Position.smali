.class public interface abstract Lcom/amazon/krf/platform/Position;
.super Ljava/lang/Object;
.source "Position.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/krf/platform/Position;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_SHORT_POSITION:J = -0x1L

.field public static final invalidPosition:Lcom/amazon/krf/platform/Position;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 23
    new-instance v8, Lcom/amazon/krf/platform/KRFPosition;

    const-wide/16 v1, -0x1

    const-string v3, ""

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/krf/platform/KRFPosition;-><init>(JLjava/lang/String;DD)V

    sput-object v8, Lcom/amazon/krf/platform/Position;->invalidPosition:Lcom/amazon/krf/platform/Position;

    return-void
.end method


# virtual methods
.method public abstract getLongPosition()Ljava/lang/String;
.end method

.method public abstract getShortPosition()J
.end method

.method public abstract isValid()Z
.end method
