.class Ljavassist/bytecode/AnnotationsAttribute$Parser;
.super Ljavassist/bytecode/AnnotationsAttribute$Walker;
.source "AnnotationsAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/AnnotationsAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parser"
.end annotation


# instance fields
.field allAnno:[Ljavassist/bytecode/annotation/Annotation;

.field allParams:[[Ljavassist/bytecode/annotation/Annotation;

.field currentAnno:Ljavassist/bytecode/annotation/Annotation;

.field currentMember:Ljavassist/bytecode/annotation/MemberValue;

.field pool:Ljavassist/bytecode/ConstPool;


# direct methods
.method constructor <init>([BLjavassist/bytecode/ConstPool;)V
    .locals 0

    .line 667
    invoke-direct {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;-><init>([B)V

    .line 668
    iput-object p2, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    return-void
.end method


# virtual methods
.method annotation(III)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 711
    new-instance v0, Ljavassist/bytecode/annotation/Annotation;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2, v1}, Ljavassist/bytecode/annotation/Annotation;-><init>(ILjavassist/bytecode/ConstPool;)V

    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    .line 712
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(III)I

    move-result p1

    return p1
.end method

.method annotationArray(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 699
    new-array v0, p2, [Ljavassist/bytecode/annotation/Annotation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 701
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotation(I)I

    move-result p1

    .line 702
    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 705
    :cond_0
    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->allAnno:[Ljavassist/bytecode/annotation/Annotation;

    return p1
.end method

.method annotationMemberValue(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 779
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    .line 780
    invoke-super {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationMemberValue(I)I

    move-result p1

    .line 781
    new-instance v1, Ljavassist/bytecode/annotation/AnnotationMemberValue;

    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    iget-object v3, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v1, v2, v3}, Ljavassist/bytecode/annotation/AnnotationMemberValue;-><init>(Ljavassist/bytecode/annotation/Annotation;Ljavassist/bytecode/ConstPool;)V

    iput-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    .line 782
    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    return p1
.end method

.method arrayMemberValue(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 788
    new-instance v0, Ljavassist/bytecode/annotation/ArrayMemberValue;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, v1}, Ljavassist/bytecode/annotation/ArrayMemberValue;-><init>(Ljavassist/bytecode/ConstPool;)V

    .line 789
    new-array v1, p2, [Ljavassist/bytecode/annotation/MemberValue;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 791
    invoke-virtual {p0, p1}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValue(I)I

    move-result p1

    .line 792
    iget-object v3, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 795
    :cond_0
    invoke-virtual {v0, v1}, Ljavassist/bytecode/annotation/ArrayMemberValue;->setValue([Ljavassist/bytecode/annotation/MemberValue;)V

    .line 796
    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    return p1
.end method

.method classMemberValue(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 773
    new-instance v0, Ljavassist/bytecode/annotation/ClassMemberValue;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2, v1}, Ljavassist/bytecode/annotation/ClassMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    .line 774
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->classMemberValue(II)V

    return-void
.end method

.method constValueMember(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    const/16 v1, 0x46

    if-eq p1, v1, :cond_5

    const/16 v1, 0x53

    if-eq p1, v1, :cond_4

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_3

    const/16 v1, 0x73

    if-eq p1, v1, :cond_2

    const/16 v1, 0x49

    if-eq p1, v1, :cond_1

    const/16 v1, 0x4a

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 755
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown tag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 734
    :pswitch_0
    new-instance v1, Ljavassist/bytecode/annotation/DoubleMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/DoubleMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 731
    :pswitch_1
    new-instance v1, Ljavassist/bytecode/annotation/CharMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/CharMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 728
    :pswitch_2
    new-instance v1, Ljavassist/bytecode/annotation/ByteMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/ByteMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 743
    :cond_0
    new-instance v1, Ljavassist/bytecode/annotation/LongMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/LongMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 740
    :cond_1
    new-instance v1, Ljavassist/bytecode/annotation/IntegerMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/IntegerMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 752
    :cond_2
    new-instance v1, Ljavassist/bytecode/annotation/StringMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/StringMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 749
    :cond_3
    new-instance v1, Ljavassist/bytecode/annotation/BooleanMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/BooleanMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 746
    :cond_4
    new-instance v1, Ljavassist/bytecode/annotation/ShortMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/ShortMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    goto :goto_0

    .line 737
    :cond_5
    new-instance v1, Ljavassist/bytecode/annotation/FloatMemberValue;

    invoke-direct {v1, p2, v0}, Ljavassist/bytecode/annotation/FloatMemberValue;-><init>(ILjavassist/bytecode/ConstPool;)V

    .line 758
    :goto_0
    iput-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    .line 759
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->constValueMember(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method enumMemberValue(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 766
    new-instance v0, Ljavassist/bytecode/annotation/EnumMemberValue;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->pool:Ljavassist/bytecode/ConstPool;

    invoke-direct {v0, p2, p3, v1}, Ljavassist/bytecode/annotation/EnumMemberValue;-><init>(IILjavassist/bytecode/ConstPool;)V

    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    .line 768
    invoke-super {p0, p1, p2, p3}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->enumMemberValue(III)V

    return-void
.end method

.method memberValuePair(II)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 717
    invoke-super {p0, p1, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValuePair(II)I

    move-result p1

    .line 718
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentAnno:Ljavassist/bytecode/annotation/Annotation;

    iget-object v1, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    invoke-virtual {v0, p2, v1}, Ljavassist/bytecode/annotation/Annotation;->addMemberValue(ILjavassist/bytecode/annotation/MemberValue;)V

    return p1
.end method

.method parameters(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 688
    new-array v0, p1, [[Ljavassist/bytecode/annotation/Annotation;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 690
    invoke-virtual {p0, p2}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray(I)I

    move-result p2

    .line 691
    iget-object v2, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->allAnno:[Ljavassist/bytecode/annotation/Annotation;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 694
    :cond_0
    iput-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->allParams:[[Ljavassist/bytecode/annotation/Annotation;

    return-void
.end method

.method parseAnnotations()[Ljavassist/bytecode/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 677
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->annotationArray()V

    .line 678
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->allAnno:[Ljavassist/bytecode/annotation/Annotation;

    return-object v0
.end method

.method parseMemberValue()Ljavassist/bytecode/annotation/MemberValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0, v0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->memberValue(I)I

    .line 683
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->currentMember:Ljavassist/bytecode/annotation/MemberValue;

    return-object v0
.end method

.method parseParameters()[[Ljavassist/bytecode/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 672
    invoke-virtual {p0}, Ljavassist/bytecode/AnnotationsAttribute$Walker;->parameters()V

    .line 673
    iget-object v0, p0, Ljavassist/bytecode/AnnotationsAttribute$Parser;->allParams:[[Ljavassist/bytecode/annotation/Annotation;

    return-object v0
.end method
