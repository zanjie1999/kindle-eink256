.class final Lcom/amazon/bookwizard/util/M$1;
.super Ljava/util/HashMap;
.source "M.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/util/M;->timer(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$time:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 154
    iput-wide p1, p0, Lcom/amazon/bookwizard/util/M$1;->val$time:J

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 155
    iget-wide p1, p0, Lcom/amazon/bookwizard/util/M$1;->val$time:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "time"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
