export default class Vector extends Float64Array {
    init() {
      this.fill(0);
    }

    copy(vec2) {
        for (let i = 0; i < this.length; i++) {
            this[i] = vec2[i];
        }
    }
    
    add(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] + vec2[i];
        }
    }

    minus(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] - vec2[i];
        }
    }

    sadd(scalar) {
        return this.map(v => v + scalar);
    }

    mul(vec2, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] * vec2[i];
        }
    }

    smul(scalar) {
        return this.map(v => v * scalar);
    }

    div(vec2) {
        return this.map((v, i) => v / vec2[i]);
    }

    sdiv(scalar, outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] / scalar;
        }
    }

    cube(outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = this[i] * this[i] * this[i];
        }
    }

    sum() {
        return this.reduce((acc, v) => acc + v, 0);
    }

    head(N) {
        return this.slice(0, N);
    }

    tail(N) {
        return this.slice(this.length - N, this.length);
    }

    Dmin(h, outvec, scaling = 1){
        outvec[0] = this[0] / h * scaling;
        for (let i = 1; i < this.length; i++) {
            outvec[i] = (this[i] - this[i-1]) / h * scaling;
        }
        outvec[this.length] = -this[this.length-1] / h * scaling;
    }

    Dplus(h, outvec, scaling = 1){
        for (let i = 0; i < this.length-1; i++) {
            outvec[i] = (this[i+1] - this[i]) / h * scaling;
        }
    }

    dot(vec2) {
        return this.reduce((acc, v, i) => acc + v * vec2[i], 0);
    }

    norm1() {
        return this.reduce((acc, v) => acc + Math.abs(v), 0);
    }

    sign(outvec) {
        for (let i = 0; i < this.length; i++) {
            outvec[i] = Math.sign(this[i]);
        }
    }
}