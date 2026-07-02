.class public Lcom/amazon/ea/reftag/RefTag;
.super Ljava/lang/Object;
.source "RefTag.java"


# static fields
.field private static final REF_TAG_FORMAT:Ljava/lang/String; = "%s_%s_%s_%s_%s"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.reftag.RefTag"


# instance fields
.field private final refTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 54
    invoke-static {p2}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 55
    invoke-static {p3}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 56
    invoke-static {p4}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    .line 57
    invoke-static {p5}, Lcom/amazon/ea/util/Validate;->notNullOrEmpty(Ljava/lang/String;)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p3, v0, p1

    const/4 p1, 0x2

    aput-object p4, v0, p1

    const/4 p1, 0x3

    aput-object p5, v0, p1

    const/4 p1, 0x4

    aput-object p2, v0, p1

    const-string p1, "%s_%s_%s_%s_%s"

    .line 59
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/reftag/RefTag;->refTag:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    sget-object p1, Lcom/amazon/ea/reftag/RefTag;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Built Ref Tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/ea/reftag/RefTag;->refTag:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getRefTag()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/ea/reftag/RefTag;->refTag:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/ea/reftag/RefTag;->refTag:Ljava/lang/String;

    return-object v0
.end method
