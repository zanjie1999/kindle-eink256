.class public Lcom/amazon/kindle/krf/SWIGTYPE_p_JNIEnv;
.super Ljava/lang/Object;


# instance fields
.field private swigCPtr:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amazon/kindle/krf/SWIGTYPE_p_JNIEnv;->swigCPtr:J

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/amazon/kindle/krf/SWIGTYPE_p_JNIEnv;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/amazon/kindle/krf/SWIGTYPE_p_JNIEnv;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/amazon/kindle/krf/SWIGTYPE_p_JNIEnv;->swigCPtr:J

    :goto_0
    return-wide v0
.end method
