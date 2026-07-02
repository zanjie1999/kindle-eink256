.class final Lcom/localytics/android/LocalyticsSession$Triple;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Triple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field public final third:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;TT;)V"
        }
    .end annotation

    .line 4636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4637
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$Triple;->first:Ljava/lang/Object;

    .line 4638
    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$Triple;->second:Ljava/lang/Object;

    .line 4639
    iput-object p3, p0, Lcom/localytics/android/LocalyticsSession$Triple;->third:Ljava/lang/Object;

    return-void
.end method
